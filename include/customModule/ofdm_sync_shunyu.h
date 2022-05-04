/* -*- c++ -*- */
/*
 * Copyright 2022 shunyu.
 *
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifndef INCLUDED_CUSTOMMODULE_OFDM_SYNC_SHUNYU_H
#define INCLUDED_CUSTOMMODULE_OFDM_SYNC_SHUNYU_H

#include <customModule/api.h>
#include <gnuradio/hier_block2.h>

namespace gr {
  namespace customModule {

    /*!
     * \brief <+description of block+>
     * \ingroup customModule
     *
     */
    class CUSTOMMODULE_API ofdm_sync_shunyu : virtual public gr::hier_block2
    {
     public:
      typedef boost::shared_ptr<ofdm_sync_shunyu> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of customModule::ofdm_sync_shunyu.
       *
       * To avoid accidental use of raw pointers, customModule::ofdm_sync_shunyu's
       * constructor is in a private implementation
       * class. customModule::ofdm_sync_shunyu::make is the public interface for
       * creating new instances.
       */
      static sptr make(int fft_len,int cp_len,bool use_even_carriers=false,float threshold=0.9);
    };

  } // namespace customModule
} // namespace gr

#endif /* INCLUDED_CUSTOMMODULE_OFDM_SYNC_SHUNYU_H */


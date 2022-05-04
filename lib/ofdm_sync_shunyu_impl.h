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

#ifndef INCLUDED_CUSTOMMODULE_OFDM_SYNC_SHUNYU_IMPL_H
#define INCLUDED_CUSTOMMODULE_OFDM_SYNC_SHUNYU_IMPL_H

#include <gnuradio/blocks/plateau_detector_fb.h>
#include <customModule/ofdm_sync_shunyu.h>

namespace gr {
namespace customModule {

class ofdm_sync_shunyu_impl : public ofdm_sync_shunyu
{
     public:
      ofdm_sync_shunyu_impl(int fft_len,int cp_len,bool use_even_carriers,float threshold);
      ~ofdm_sync_shunyu_impl();

      virtual void set_threshold(float threshold);
      virtual float threshold() const;

      private:
      gr::blocks::plateau_detector_fb::sptr d_plateau_detector;
};

} // namespace customModule
} // namespace gr

#endif /* INCLUDED_CUSTOMMODULE_OFDM_SYNC_SHUNYU_IMPL_H */

